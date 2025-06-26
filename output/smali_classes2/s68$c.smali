.class public final enum Ls68$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lb78;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls68$c;",
        ">;",
        "Lb78;"
    }
.end annotation


# static fields
.field public static final enum f:Ls68$c;

.field public static final enum g:Ls68$c;

.field public static final synthetic h:[Ls68$c;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ls68$c;

    const-wide/32 v1, 0x1e18558

    invoke-static {v1, v2}, Ln48;->l(J)Ln48;

    move-result-object v1

    const-string v2, "WEEK_BASED_YEARS"

    const/4 v3, 0x0

    const-string v4, "WeekBasedYears"

    invoke-direct {v0, v2, v3, v4, v1}, Ls68$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v0, Ls68$c;->f:Ls68$c;

    .line 2
    new-instance v1, Ls68$c;

    const-wide/32 v4, 0x786156

    invoke-static {v4, v5}, Ln48;->l(J)Ln48;

    move-result-object v2

    const-string v4, "QUARTER_YEARS"

    const/4 v5, 0x1

    const-string v6, "QuarterYears"

    invoke-direct {v1, v4, v5, v6, v2}, Ls68$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v1, Ls68$c;->g:Ls68$c;

    const/4 v2, 0x2

    new-array v2, v2, [Ls68$c;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 3
    sput-object v2, Ls68$c;->h:[Ls68$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ln48;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Ls68$c;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls68$c;
    .locals 1

    .line 1
    const-class v0, Ls68$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls68$c;

    return-object p0
.end method

.method public static values()[Ls68$c;
    .locals 1

    .line 1
    sget-object v0, Ls68$c;->h:[Ls68$c;

    invoke-virtual {v0}, [Ls68$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls68$c;

    return-object v0
.end method


# virtual methods
.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k(Lt68;J)Lt68;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lt68;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x100

    .line 2
    div-long v2, p2, v0

    sget-object v4, Lr68;->p:Lr68;

    invoke-interface {p1, v2, v3, v4}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    rem-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long p2, p2, v0

    sget-object v0, Lr68;->o:Lr68;

    invoke-interface {p1, p2, p3, v0}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    sget-object v0, Ls68;->a:Lb78;

    sget-object v0, Ls68$b;->h:Ls68$b;

    invoke-interface {p1, v0}, Lu68;->k(Ly68;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2, p2, p3}, Lkt7;->q(JJ)J

    move-result-wide p2

    .line 5
    invoke-interface {p1, v0, p2, p3}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls68$c;->e:Ljava/lang/String;

    return-object v0
.end method
