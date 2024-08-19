const Koa = require('koa');
const app = new Koa();

app.use(async (ctx) => {
    if (ctx.path === '/') {
      ctx.body = '<h1>Index sayfasına hoşgeldiniz</h1>';
    } else if (ctx.path === '/hakkimda') {
      ctx.body = '<h1>Hakkımda sayfasına hoşgeldiniz</h1>';
    } else if (ctx.path === '/iletisim') {
      ctx.body = '<h1>İletişim sayfasına hoşgeldiniz</h1>';
    } else {
      ctx.status = 404;
      ctx.body = '<h1>Sayfa bulunamadı</h1>';
    }
  });
  
  app.listen(3000, () => {
    console.log('Server is running on port 3000');
  });