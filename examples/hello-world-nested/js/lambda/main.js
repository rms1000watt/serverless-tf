
exports.handler = function(event, context, callback) {
  out = "{\"message\":\"hello world from serverless-tf\"}";
  console.log(out);
  callback(null, out);
}
