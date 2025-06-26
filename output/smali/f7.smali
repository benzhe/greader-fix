.class public Lf7;
.super Lu7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7$c;,
        Lf7$b;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# direct methods
.method public static c(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2
    instance-of v0, p0, Lf7$c;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p0

    check-cast v0, Lf7$c;

    .line 4
    invoke-interface {v0, p2}, Lf7$c;->a(I)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, p0, Lf7$b;

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v1, Lf7$a;

    invoke-direct {v1, p1, p0, p2}, Lf7$a;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
