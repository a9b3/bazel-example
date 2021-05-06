def generate_file(name, tool = "//example/generate_file:generate_file", **kwargs):
    """
    Generate File
    """

    out = "%s.json" % name
    cmd = "$(location %s) --out $@" % (tool)

    native.genrule(
      name = name,
      outs = [out],
      cmd = cmd,
      tools = [tool],
      message = "Generating %s" % out,
      local = 1,
      **kwargs,
    )

# def owners(name, teams, tool="//ownership:generate_owners_json", **kwargs):
#     """
#     Generates owner json
#     """
#
#     # meta = None
#     # for s in srcs:
#     #     if s.endswith("__Meta__.json"):
#     #         meta = s
#     #
#     # if len(srcs) == 1 and meta != None:
#     #     fail("Can not supply a __Meta__.json and no other srcs")
#
#     # ex.
#     cmd = "$(location %s)"
#
#     if meta != None:
#         cmd = "$(location %s) $(location %s) -o $@" % (stitcher_tool, meta)
#     else:
#         cmd = "$(location %s) $< -o $@" % stitcher_tool
#
#     out = "%s.json" % name
#
#     native.genrule(
#         name = name,
#         srcs = srcs,
#         outs = [out],
#         cmd = cmd,
#         tools = [stitcher_tool],
#         message = "Stitching %s" % out,
#         **kwargs
#     )
#
# # def combineOwners():
# #     """
# #     """
