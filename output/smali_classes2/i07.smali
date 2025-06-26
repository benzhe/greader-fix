.class public Li07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg07;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Luz6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Luz6;Lxz6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li07;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Li07;->b:Luz6;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Lxz6;
    .locals 1

    .line 1
    sget-object v0, Lxz6;->f:Lxz6;

    return-object v0
.end method

.method public e(Landroid/graphics/Bitmap;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Li07;->b:Luz6;

    .line 2
    iget v0, v0, Luz6;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Li07;->b:Luz6;

    .line 2
    iget v0, v0, Luz6;->a:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Li07;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li07;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
