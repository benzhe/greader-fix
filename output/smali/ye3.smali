.class public final Lye3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lze3;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lze3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Lye3;->a:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lye3;->b:Lze3;

    return-void
.end method


# virtual methods
.method public final a(Lxf3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lye3;->b:Lze3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lye3;->a:Landroid/os/Handler;

    new-instance v1, Lff3;

    invoke-direct {v1, p0, p1}, Lff3;-><init>(Lye3;Lxf3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
