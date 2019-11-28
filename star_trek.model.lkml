connection: "kognitio_local"

#include: "*.view.lkml"                       # include all views in this project
#include: "/Views/**/*.view"
include: "/Views/*"
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
label: "Star Trek"

explore: characters {
  view_label: "Star Trek characters"
  description: "List of Star Trek Characters and details about them"
}
