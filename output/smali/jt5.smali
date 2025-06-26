.class public final synthetic Ljt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkx5;


# instance fields
.field public final a:Llt5;

.field public final b:I

.field public final c:Ljx5;

.field public final d:Lyq5;

.field public final e:[Ljn5;


# direct methods
.method public constructor <init>(Llt5;ILjx5;Lyq5;[Ljn5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljt5;->a:Llt5;

    iput p2, p0, Ljt5;->b:I

    iput-object p3, p0, Ljt5;->c:Ljx5;

    iput-object p4, p0, Ljt5;->d:Lyq5;

    iput-object p5, p0, Ljt5;->e:[Ljn5;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ljt5;->a:Llt5;

    iget v1, p0, Ljt5;->b:I

    iget-object v2, p0, Ljt5;->c:Ljx5;

    iget-object v3, p0, Ljt5;->d:Lyq5;

    iget-object v4, p0, Ljt5;->e:[Ljn5;

    check-cast p1, Landroid/database/Cursor;

    const/4 v5, 0x0

    .line 1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc50;->K(Ljava/lang/String;)Liu5;

    move-result-object v5

    .line 2
    invoke-virtual {v5}, Lvt5;->I()I

    move-result v5

    if-eq v5, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v2, Lnx5;->b:Ljava/util/concurrent/Executor;

    .line 5
    :cond_1
    new-instance p1, Lkt5;

    invoke-direct {p1, v0, v1, v3, v4}, Lkt5;-><init>(Llt5;[BLyq5;[Ljn5;)V

    .line 6
    invoke-interface {v2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
