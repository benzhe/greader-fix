.class public final Lvw5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lqi6;

.field public final b:Z

.field public final c:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqi6;ZLln5;Lln5;Lln5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqi6;",
            "Z",
            "Lln5<",
            "Lbu5;",
            ">;",
            "Lln5<",
            "Lbu5;",
            ">;",
            "Lln5<",
            "Lbu5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lvw5;->a:Lqi6;

    .line 3
    iput-boolean p2, p0, Lvw5;->b:Z

    .line 4
    iput-object p3, p0, Lvw5;->c:Lln5;

    .line 5
    iput-object p4, p0, Lvw5;->d:Lln5;

    .line 6
    iput-object p5, p0, Lvw5;->e:Lln5;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v1, Lvw5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lvw5;

    .line 3
    iget-boolean v1, p0, Lvw5;->b:Z

    iget-boolean v2, p1, Lvw5;->b:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object v1, p0, Lvw5;->a:Lqi6;

    iget-object v2, p1, Lvw5;->a:Lqi6;

    invoke-virtual {v1, v2}, Lqi6;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 5
    :cond_3
    iget-object v1, p0, Lvw5;->c:Lln5;

    iget-object v2, p1, Lvw5;->c:Lln5;

    invoke-virtual {v1, v2}, Lln5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 6
    :cond_4
    iget-object v1, p0, Lvw5;->d:Lln5;

    iget-object v2, p1, Lvw5;->d:Lln5;

    invoke-virtual {v1, v2}, Lln5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 7
    :cond_5
    iget-object v0, p0, Lvw5;->e:Lln5;

    iget-object p1, p1, Lvw5;->e:Lln5;

    invoke-virtual {v0, p1}, Lln5;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lvw5;->a:Lqi6;

    invoke-virtual {v0}, Lqi6;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lvw5;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lvw5;->c:Lln5;

    invoke-virtual {v1}, Lln5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lvw5;->d:Lln5;

    invoke-virtual {v0}, Lln5;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lvw5;->e:Lln5;

    invoke-virtual {v1}, Lln5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
