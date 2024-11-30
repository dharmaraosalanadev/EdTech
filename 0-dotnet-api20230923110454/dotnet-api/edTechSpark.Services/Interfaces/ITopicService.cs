using edTechSpark.Core.Entities;
using edTechSpark.Models;
using System.Collections.Generic;

namespace edTechSpark.Services.Interfaces
{
    public interface ITopicService: IService<CourseTopic>
    {
        IEnumerable<CourseTopicModel> GetAllTopics();
        IEnumerable<CourseTopic> GetTopicsByCourse(int CourseId);
    }
}
