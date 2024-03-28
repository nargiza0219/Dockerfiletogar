FROM nginx:1.25
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
# yess