.class public Lq66;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo66;

.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Lo66;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lq66;->d:I

    .line 3
    iput-object p1, p0, Lq66;->a:Lo66;

    const/4 v1, 0x1

    const-string v2, "fresh_install"

    .line 4
    invoke-virtual {p1, v2, v1}, Lo66;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 5
    iput-boolean v1, p0, Lq66;->c:Z

    const-string v1, "test_device"

    .line 6
    invoke-virtual {p1, v1, v0}, Lo66;->a(Ljava/lang/String;Z)Z

    move-result p1

    .line 7
    iput-boolean p1, p0, Lq66;->b:Z

    return-void
.end method
