.class public Lbx6;
.super Ll07;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lax6;


# direct methods
.method public constructor <init>(Lax6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbx6;->a:Lax6;

    invoke-direct {p0}, Ll07;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {}, Lux6;->n()Lux6;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lhz6;->i()Lty6;

    move-result-object p2

    invoke-interface {p2, p1}, Lty6;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lbx6;->a:Lax6;

    .line 5
    invoke-virtual {p2, p1, p3}, Lax6;->d(Ljava/io/File;Landroid/graphics/Bitmap;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lbx6;->a:Lax6;

    invoke-virtual {p1}, Lrb;->dismissAllowingStateLoss()V

    return-void
.end method
