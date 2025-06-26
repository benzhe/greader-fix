.class public Lrq5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrq5$a;
    }
.end annotation


# instance fields
.field public final a:Lrq5$a;

.field public final b:Lbu5;


# direct methods
.method public constructor <init>(Lrq5$a;Lbu5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrq5;->a:Lrq5$a;

    .line 3
    iput-object p2, p0, Lrq5;->b:Lbu5;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lrq5;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lrq5;

    .line 3
    iget-object v0, p0, Lrq5;->a:Lrq5$a;

    .line 4
    iget-object v2, p1, Lrq5;->a:Lrq5$a;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrq5;->b:Lbu5;

    .line 6
    iget-object p1, p1, Lrq5;->b:Lbu5;

    .line 7
    invoke-virtual {v0, p1}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lrq5;->a:Lrq5$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x81d

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lrq5;->b:Lbu5;

    invoke-virtual {v1}, Lbu5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
