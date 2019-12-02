///
/// @file
///
#include <gtest/gtest.h>

#include "perception/model/train.h"

namespace perception
{
namespace
{
class ModelSpecFixture : public ::testing::Test
{
  protected:
    Runner unit_;
};

TEST_F(ModelSpecFixture, GivenNeuralNetwork_ExpectTrainedModel) { unit_.Train(); }
}  // namespace
}  // namespace perception