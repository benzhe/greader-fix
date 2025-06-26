.class public final Lx48;
.super Lp68;
.source "SourceFile"

# interfaces
.implements Lt68;
.implements Lv68;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp68;",
        "Lt68;",
        "Lv68;",
        "Ljava/lang/Comparable<",
        "Lx48;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lc68;

    invoke-direct {v0}, Lc68;-><init>()V

    sget-object v1, Lq68;->I:Lq68;

    sget-object v2, Lj68;->i:Lj68;

    const/4 v3, 0x4

    const/16 v4, 0xa

    .line 2
    invoke-virtual {v0, v1, v3, v4, v2}, Lc68;->l(Ly68;IILj68;)Lc68;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lc68;->o()Lb68;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp68;-><init>()V

    .line 2
    iput p1, p0, Lx48;->e:I

    return-void
.end method

.method public static K(J)Z
    .locals 5

    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x64

    .line 1
    rem-long v0, p0, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x190

    rem-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static L(I)Lx48;
    .locals 4

    .line 1
    sget-object v0, Lq68;->I:Lq68;

    int-to-long v1, p0

    .line 2
    iget-object v3, v0, Lq68;->h:Ld78;

    .line 3
    invoke-virtual {v3, v1, v2, v0}, Ld78;->b(JLy68;)J

    .line 4
    new-instance v0, Lx48;

    invoke-direct {v0, p0}, Lx48;-><init>(I)V

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lw48;

    const/16 v1, 0x43

    invoke-direct {v0, v1, p0}, Lw48;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public C(JLb78;)Lt68;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lx48;->M(JLb78;)Lx48;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lx48;->M(JLb78;)Lx48;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lx48;->M(JLb78;)Lx48;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public D(Ly68;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    iget p1, p0, Lx48;->e:I

    if-ge p1, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-long v0, v1

    return-wide v0

    .line 5
    :pswitch_1
    iget p1, p0, Lx48;->e:I

    int-to-long v0, p1

    return-wide v0

    .line 6
    :pswitch_2
    iget p1, p0, Lx48;->e:I

    if-ge p1, v1, :cond_1

    rsub-int/lit8 p1, p1, 0x1

    :cond_1
    int-to-long v0, p1

    return-wide v0

    .line 7
    :cond_2
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lx48;->M(JLb78;)Lx48;

    move-result-object p1

    return-object p1
.end method

.method public M(JLb78;)Lx48;
    .locals 2

    .line 1
    instance-of v0, p3, Lr68;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p3

    check-cast v0, Lr68;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Lc78;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported unit: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc78;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_0
    sget-object p3, Lq68;->J:Lq68;

    invoke-virtual {p0, p3}, Lx48;->D(Ly68;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lkt7;->q(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lx48;->O(Ly68;J)Lx48;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p3, 0x3e8

    .line 5
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lx48;->N(J)Lx48;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0x64

    .line 6
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lx48;->N(J)Lx48;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0xa

    .line 7
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lx48;->N(J)Lx48;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lx48;->N(J)Lx48;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lb78;->k(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lx48;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public N(J)Lx48;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lq68;->I:Lq68;

    iget v1, p0, Lx48;->e:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lq68;->C(J)I

    move-result p1

    invoke-static {p1}, Lx48;->L(I)Lx48;

    move-result-object p1

    return-object p1
.end method

.method public O(Ly68;J)Lx48;
    .locals 4

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    .line 3
    iget-object v1, v0, Lq68;->h:Ld78;

    .line 4
    invoke-virtual {v1, p2, p3, v0}, Ld78;->b(JLy68;)J

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance p2, Lc78;

    const-string p3, "Unsupported field: "

    invoke-static {p3, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :pswitch_0
    sget-object p1, Lq68;->J:Lq68;

    invoke-virtual {p0, p1}, Lx48;->D(Ly68;)J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lx48;->e:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Lx48;->L(I)Lx48;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_1
    long-to-int p1, p2

    .line 8
    invoke-static {p1}, Lx48;->L(I)Lx48;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    iget p1, p0, Lx48;->e:I

    if-ge p1, v1, :cond_1

    const-wide/16 v0, 0x1

    sub-long p2, v0, p2

    :cond_1
    long-to-int p1, p2

    invoke-static {p1}, Lx48;->L(I)Lx48;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lx48;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lx48;

    .line 2
    iget v0, p0, Lx48;->e:I

    iget p1, p1, Lx48;->e:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lx48;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    iget v1, p0, Lx48;->e:I

    check-cast p1, Lx48;

    iget p1, p1, Lx48;->e:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lx48;->e:I

    return v0
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lx48;->O(Ly68;J)Lx48;

    move-result-object p1

    return-object p1
.end method

.method public k(Ly68;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lx48;->t(Ly68;)Ld78;

    move-result-object v0

    invoke-virtual {p0, p1}, Lx48;->D(Ly68;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ld78;->a(JLy68;)I

    move-result p1

    return p1
.end method

.method public l(Lt68;)Lt68;
    .locals 3

    .line 1
    invoke-static {p1}, Lj58;->y(Lu68;)Lj58;

    move-result-object v0

    sget-object v1, Lo58;->g:Lo58;

    invoke-virtual {v0, v1}, Lj58;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lq68;->I:Lq68;

    iget v1, p0, Lx48;->e:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ll48;

    const-string v0, "Adjustment only supported on ISO date-time"

    invoke-direct {p1, v0}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Ly68;)Ld78;
    .locals 4

    .line 1
    sget-object v0, Lq68;->H:Lq68;

    if-ne p1, v0, :cond_1

    .line 2
    iget p1, p0, Lx48;->e:I

    const-wide/16 v0, 0x1

    if-gtz p1, :cond_0

    const-wide/32 v2, 0x3b9aca00

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x3b9ac9ff

    :goto_0
    invoke-static {v0, v1, v2, v3}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lp68;->t(Ly68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lx48;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(La78;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "La78<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz68;->b:La78;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lo58;->g:Lo58;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lz68;->c:La78;

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lr68;->p:Lr68;

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lz68;->f:La78;

    if-eq p1, v0, :cond_3

    sget-object v0, Lz68;->g:La78;

    if-eq p1, v0, :cond_3

    .line 6
    sget-object v0, Lz68;->d:La78;

    if-eq p1, v0, :cond_3

    sget-object v0, Lz68;->a:La78;

    if-eq p1, v0, :cond_3

    sget-object v0, Lz68;->e:La78;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-super {p0, p1}, Lp68;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public x(Lv68;)Lt68;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    check-cast p1, Lx48;

    return-object p1
.end method

.method public y(Ly68;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lq68;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lq68;->I:Lq68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lq68;->H:Lq68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lq68;->J:Lq68;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1, p0}, Ly68;->k(Lu68;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
