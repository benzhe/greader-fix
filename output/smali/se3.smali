.class public abstract Lse3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lse3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lre3;

    invoke-direct {v0}, Lre3;-><init>()V

    sput-object v0, Lse3;->a:Lse3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse3;->g()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(ILue3;Lte3;I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lse3;->e(ILue3;Z)Lue3;

    .line 2
    invoke-virtual {p0, v0, p3}, Lse3;->c(ILte3;)Lte3;

    const/4 p2, 0x1

    if-nez p1, :cond_5

    const/4 p1, -0x1

    if-eqz p4, :cond_2

    if-eq p4, p2, :cond_1

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lse3;->g()I

    move-result p4

    sub-int/2addr p4, p2

    if-nez p4, :cond_3

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lse3;->g()I

    move-result p4

    sub-int/2addr p4, p2

    if-nez p4, :cond_3

    const/4 p2, -0x1

    :cond_3
    :goto_1
    if-ne p2, p1, :cond_4

    return p1

    .line 6
    :cond_4
    invoke-virtual {p0, p2, p3}, Lse3;->c(ILte3;)Lte3;

    return v0

    :cond_5
    add-int/2addr p1, p2

    return p1
.end method

.method public final c(ILte3;)Lte3;
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lse3;->d(ILte3;ZJ)Lte3;

    move-result-object p1

    return-object p1
.end method

.method public abstract d(ILte3;ZJ)Lte3;
.end method

.method public abstract e(ILue3;Z)Lue3;
.end method

.method public abstract f(Ljava/lang/Object;)I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method
