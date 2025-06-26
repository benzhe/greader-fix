.class public Lai6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lai6;


# instance fields
.field public final a:Ljava/lang/Float;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai6;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lai6;-><init>(Ljava/lang/Float;Ljava/util/concurrent/Executor;Lfi6;)V

    .line 2
    sput-object v0, Lai6;->c:Lai6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/util/concurrent/Executor;Lfi6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lai6;->a:Ljava/lang/Float;

    .line 3
    iput-object p1, p0, Lai6;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Llp4;
    .locals 3

    .line 1
    iget-object v0, p0, Lai6;->a:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Llp4;->s()Llp4;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Llp4;->p()Llp4$a;

    move-result-object v0

    iget-object v1, p0, Lai6;->a:Ljava/lang/Float;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 5
    iget-boolean v2, v0, Lpk4$b;->g:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lpk4$b;->f()V

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v0, Lpk4$b;->g:Z

    .line 8
    :cond_1
    iget-object v2, v0, Lpk4$b;->f:Lpk4;

    check-cast v2, Llp4;

    invoke-static {v2, v1}, Llp4;->q(Llp4;F)V

    .line 9
    invoke-virtual {v0}, Lpk4$b;->j()Lam4;

    move-result-object v0

    check-cast v0, Lpk4;

    check-cast v0, Llp4;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lai6;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lai6;

    .line 3
    iget-object p1, p1, Lai6;->a:Ljava/lang/Float;

    iget-object v0, p0, Lai6;->a:Ljava/lang/Float;

    invoke-static {p1, v0}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lai6;->a:Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
