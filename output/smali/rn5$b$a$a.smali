.class public Lrn5$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrn5$b$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lrn5$b$b;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lrn5$b$a;


# direct methods
.method public constructor <init>(Lrn5$b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrn5$b$a$a;->f:Lrn5$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p1, p1, Lrn5$b$a;->f:I

    add-int/lit8 p1, p1, -0x1

    .line 3
    iput p1, p0, Lrn5$b$a$a;->e:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lrn5$b$a$a;->e:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lrn5$b$a$a;->f:Lrn5$b$a;

    .line 2
    iget-wide v0, v0, Lrn5$b$a;->e:J

    .line 3
    iget v2, p0, Lrn5$b$a$a;->e:I

    const/4 v3, 0x1

    shl-int v4, v3, v2

    int-to-long v4, v4

    and-long/2addr v0, v4

    .line 4
    new-instance v4, Lrn5$b$b;

    invoke-direct {v4}, Lrn5$b$b;-><init>()V

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iput-boolean v0, v4, Lrn5$b$b;->a:Z

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v5, v2

    .line 6
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v4, Lrn5$b$b;->b:I

    .line 7
    iget v0, p0, Lrn5$b$a$a;->e:I

    sub-int/2addr v0, v3

    iput v0, p0, Lrn5$b$a$a;->e:I

    return-object v4
.end method

.method public remove()V
    .locals 0

    return-void
.end method
