.class public final Llj3;
.super Lse3;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llj3;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lse3;-><init>()V

    .line 2
    iput-wide p1, p0, Llj3;->b:J

    .line 3
    iput-wide p1, p0, Llj3;->c:J

    .line 4
    iput-boolean p3, p0, Llj3;->d:Z

    return-void
.end method


# virtual methods
.method public final d(ILte3;ZJ)Lte3;
    .locals 0

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Lc50;->r3(II)I

    .line 2
    iget-wide p3, p0, Llj3;->c:J

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-wide p3, p2, Lte3;->a:J

    return-object p2
.end method

.method public final e(ILue3;Z)Lue3;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lc50;->r3(II)I

    if-eqz p3, :cond_0

    .line 2
    sget-object p1, Llj3;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-wide v0, p0, Llj3;->b:J

    .line 4
    iput-object p1, p2, Lue3;->a:Ljava/lang/Object;

    .line 5
    iput-object p1, p2, Lue3;->b:Ljava/lang/Object;

    .line 6
    iput-wide v0, p2, Lue3;->c:J

    return-object p2
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Llj3;->e:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
