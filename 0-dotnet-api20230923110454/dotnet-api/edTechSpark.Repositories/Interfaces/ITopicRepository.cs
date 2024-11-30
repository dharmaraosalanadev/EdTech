using edTechSpark.Core.Entities;
using edTechSpark.Models;

namespace edTechSpark.Repositories.Interfaces
{
   public interface ITopicRepository
    {
        IEnumerable<CourseTopicModel> GetAllTopics();
        IEnumerable<CourseTopic> GetTopicWithLessons(int id);
        IEnumerable<CourseTopic> GetTopicsByCourse(int id);
    }
}
