import API from "../API"

export default {
  getAllUsers() {
    // console.log(1, "TweetActions")
    API.getAllUsers();
  },
  followUser(userId) {
    API.followUser(userId);
  }
}
