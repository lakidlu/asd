 output "alb_dns_name" {
  description = "DNS name for balancing loader mechanism"
  value       = module.webserver_cluster.alb_dns_name
}