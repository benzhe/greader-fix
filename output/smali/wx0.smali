.class public final synthetic Lwx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lvx0;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lvx0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwx0;->e:Lvx0;

    iput-object p2, p0, Lwx0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lwx0;->e:Lvx0;

    iget-object v1, p0, Lwx0;->f:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lvx0;->a:Lux0;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2
    iget-object v0, v0, Lux0;->a:Lxw0;

    .line 3
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    .line 4
    invoke-static {v0}, Lis0;->zzex(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    check-cast v0, Lww0;

    invoke-virtual {v0, v1}, Lww0;->X(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method
