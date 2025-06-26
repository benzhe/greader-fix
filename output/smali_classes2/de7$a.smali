.class public final Lde7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:Ljb7;

.field public final synthetic f:Lde7;


# direct methods
.method public constructor <init>(Lde7;Ljb7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lde7$a;->f:Lde7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lde7$a;->e:Ljb7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lde7$a;->e:Ljb7;

    invoke-interface {v0}, Ljb7;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lde7$a;->f:Lde7;

    iget-object v0, v0, Lde7;->b:Lvc7;

    invoke-interface {v0, p1}, Lvc7;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lde7$a;->e:Ljb7;

    invoke-interface {p1}, Ljb7;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lde7$a;->e:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Lde7$a;->e:Ljb7;

    new-instance v2, Lkc7;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lkc7;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lde7$a;->e:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->c(Lic7;)V

    return-void
.end method
