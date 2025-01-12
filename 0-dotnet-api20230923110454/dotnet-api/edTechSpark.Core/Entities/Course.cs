﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace edTechSpark.Core.Entities
{
    public partial class Course
    {
        public Course()
        {
            CartItems = new HashSet<CartItem>();
            CourseTopics = new HashSet<CourseTopic>();
            OrderItems = new HashSet<OrderItem>();
            Subscriptions = new HashSet<Subscription>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Summary { get; set; }
        public string Description { get; set; }
        public decimal Sequence { get; set; }
        public string ImageUrl { get; set; }
        public string DemoUrl { get; set; }
        public string Url { get; set; }
        public decimal UnitPrice { get; set; }
        public int DifficultyType { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public bool IsActive { get; set; }
        public int CategoryId { get; set; }
        public int MentorId { get; set; }

        public virtual Category Category { get; set; }
        public virtual Mentor Mentor { get; set; }
        public virtual ICollection<CartItem> CartItems { get; set; }
        public virtual ICollection<CourseTopic> CourseTopics { get; set; }
        public virtual ICollection<OrderItem> OrderItems { get; set; }
        public virtual ICollection<Subscription> Subscriptions { get; set; }
    }
}