using System;
using System.Drawing;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PaymentDetailAPI.Data;
using PaymentDetailAPI.Models;

namespace PaymentDetailAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PaymentDetailController : ControllerBase
    {
        private readonly PaymentDetailContext _context;

        public PaymentDetailController(PaymentDetailContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetPaymentDetail()
        {
            var PaymentDetail = await _context.PaymentDetail.ToListAsync();
            return Ok(PaymentDetail);
        }

        [HttpPost]
        public async Task<IActionResult> CreatePaymentDetail(PaymentDetailModel p)
        {
            if (ModelState.IsValid)
            {
                await _context.PaymentDetail.AddAsync(p);
                await _context.SaveChangesAsync();

                return CreatedAtAction("GetPaymentDetail", new { p.PaymentDetailId }, p);
            }

            return new JsonResult("Something went wrong") { StatusCode = 500 };
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetPaymentDetail(int id)
        {
            var item = await _context.PaymentDetail.FirstOrDefaultAsync(
                x => x.PaymentDetailId == id
            );

            if (item == null)
            {
                return NotFound();
            }

            return Ok(item);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdatePaymentDetail(
            int id,
            PaymentDetailModel paymentDetail
        )
        {
            if (id != paymentDetail.PaymentDetailId)
                return BadRequest();

            var item = await _context.PaymentDetail.FirstOrDefaultAsync(
                x => x.PaymentDetailId == id
            );

            if (item == null)
                return NotFound();

            item.PaymentDetailId = paymentDetail.PaymentDetailId;
            item.CardNumber = paymentDetail.CardNumber;
            item.CardOwnerName = paymentDetail.CardOwnerName;
            item.ExpirationDate = paymentDetail.ExpirationDate;
            item.SecurityCode = paymentDetail.SecurityCode;

            await _context.SaveChangesAsync();

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteItem(int id)
        {
            var item = await _context.PaymentDetail.FirstOrDefaultAsync(
                x => x.PaymentDetailId == id
            );

            if (item == null)
            {
                return NotFound();
            }

            _context.PaymentDetail.Remove(item);
            await _context.SaveChangesAsync();

            return Ok(item);
        }


        // [Route ("TestRun")]
        // [HttpGet]

        // public ActionResult TestRun(){
        //     return Ok("success");
        // }
    }
}
