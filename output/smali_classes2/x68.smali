.class public final Lx68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv68;


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(ILm48;Lw68;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "dayOfWeek"

    .line 2
    invoke-static {p2, p3}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput p1, p0, Lx68;->e:I

    .line 4
    invoke-virtual {p2}, Lm48;->K()I

    move-result p1

    iput p1, p0, Lx68;->f:I

    return-void
.end method


# virtual methods
.method public l(Lt68;)Lt68;
    .locals 3

    .line 1
    sget-object v0, Lq68;->x:Lq68;

    invoke-interface {p1, v0}, Lu68;->k(Ly68;)I

    move-result v0

    .line 2
    iget v1, p0, Lx68;->e:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget v2, p0, Lx68;->f:I

    if-ne v0, v2, :cond_0

    return-object p1

    :cond_0
    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 3
    iget v1, p0, Lx68;->f:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    rsub-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    neg-int v0, v0

    :goto_0
    int-to-long v0, v0

    .line 4
    sget-object v2, Lr68;->m:Lr68;

    invoke-interface {p1, v0, v1, v2}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    iget v1, p0, Lx68;->f:I

    sub-int/2addr v1, v0

    if-ltz v1, :cond_3

    rsub-int/lit8 v0, v1, 0x7

    goto :goto_1

    :cond_3
    neg-int v0, v1

    :goto_1
    int-to-long v0, v0

    .line 6
    sget-object v2, Lr68;->m:Lr68;

    invoke-interface {p1, v0, v1, v2}, Lt68;->C(JLb78;)Lt68;

    move-result-object p1

    return-object p1
.end method
