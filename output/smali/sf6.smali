.class public final Lsf6;
.super Lde6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsf6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lde6<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lae6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lsd6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsd6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lod6;

.field public final d:Ldg6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldg6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lsf6$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsf6<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public f:Lde6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde6<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae6;Lsd6;Lod6;Ldg6;Lee6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae6<",
            "TT;>;",
            "Lsd6<",
            "TT;>;",
            "Lod6;",
            "Ldg6<",
            "TT;>;",
            "Lee6;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lde6;-><init>()V

    .line 2
    new-instance p5, Lsf6$b;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lsf6$b;-><init>(Lsf6;Lsf6$a;)V

    iput-object p5, p0, Lsf6;->e:Lsf6$b;

    .line 3
    iput-object p1, p0, Lsf6;->a:Lae6;

    .line 4
    iput-object p2, p0, Lsf6;->b:Lsd6;

    .line 5
    iput-object p3, p0, Lsf6;->c:Lod6;

    .line 6
    iput-object p4, p0, Lsf6;->d:Ldg6;

    return-void
.end method


# virtual methods
.method public a(Leg6;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg6;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsf6;->b:Lsd6;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lsf6;->f:Lde6;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lsf6;->c:Lod6;

    iget-object v2, p0, Lsf6;->d:Ldg6;

    invoke-virtual {v0, v1, v2}, Lod6;->e(Lee6;Ldg6;)Lde6;

    move-result-object v0

    iput-object v0, p0, Lsf6;->f:Lde6;

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Leg6;->Q()Lfg6;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lhg6; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 6
    :try_start_1
    sget-object v2, Luf6;->X:Lde6;

    invoke-virtual {v2, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltd6;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lhg6; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    new-instance v0, Lbe6;

    invoke-direct {v0, p1}, Lbe6;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 8
    new-instance v0, Lud6;

    invoke-direct {v0, p1}, Lud6;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 9
    new-instance v0, Lbe6;

    invoke-direct {v0, p1}, Lbe6;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 10
    sget-object p1, Lvd6;->a:Lvd6;

    .line 11
    :goto_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    instance-of v0, p1, Lvd6;

    if-eqz v0, :cond_2

    return-object v1

    .line 13
    :cond_2
    iget-object v0, p0, Lsf6;->b:Lsd6;

    iget-object v1, p0, Lsf6;->d:Ldg6;

    .line 14
    iget-object v1, v1, Ldg6;->b:Ljava/lang/reflect/Type;

    .line 15
    iget-object v2, p0, Lsf6;->e:Lsf6$b;

    invoke-interface {v0, p1, v1, v2}, Lsd6;->a(Ltd6;Ljava/lang/reflect/Type;Lrd6;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    new-instance v0, Lbe6;

    invoke-direct {v0, p1}, Lbe6;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lgg6;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg6;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsf6;->a:Lae6;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lsf6;->f:Lde6;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lsf6;->c:Lod6;

    const/4 v1, 0x0

    iget-object v2, p0, Lsf6;->d:Ldg6;

    invoke-virtual {v0, v1, v2}, Lod6;->e(Lee6;Ldg6;)Lde6;

    move-result-object v0

    iput-object v0, p0, Lsf6;->f:Lde6;

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lgg6;->m()Lgg6;

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lsf6;->d:Ldg6;

    .line 7
    iget-object v1, v1, Ldg6;->b:Ljava/lang/reflect/Type;

    .line 8
    iget-object v2, p0, Lsf6;->e:Lsf6$b;

    invoke-interface {v0, p2, v1, v2}, Lae6;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lzd6;)Ltd6;

    move-result-object p2

    .line 9
    sget-object v0, Luf6;->X:Lde6;

    invoke-virtual {v0, p1, p2}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    return-void
.end method
