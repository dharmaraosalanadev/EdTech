using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace edTechSpark.Models
{
    public class CourseTopicModel
    {
        public int Id { get; set; }
        public string TopicName { get; set; }
        public string CourseName { get; set; }
        public bool IsActive { get; set; }
        public decimal Sequence { get; set; }
        public int CourseId { get; set; }
    }
}
