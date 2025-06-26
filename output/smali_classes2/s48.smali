.class public final enum Ls48;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu68;
.implements Lv68;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls48;",
        ">;",
        "Lu68;",
        "Lv68;"
    }
.end annotation


# static fields
.field public static final enum e:Ls48;

.field public static final enum f:Ls48;

.field public static final enum g:Ls48;

.field public static final enum h:Ls48;

.field public static final enum i:Ls48;

.field public static final enum j:Ls48;

.field public static final enum k:Ls48;

.field public static final enum l:Ls48;

.field public static final enum m:Ls48;

.field public static final enum n:Ls48;

.field public static final enum o:Ls48;

.field public static final enum p:Ls48;

.field public static final q:[Ls48;

.field public static final synthetic r:[Ls48;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ls48;

    const-string v1, "JANUARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls48;->e:Ls48;

    .line 2
    new-instance v1, Ls48;

    const-string v3, "FEBRUARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls48;->f:Ls48;

    .line 3
    new-instance v3, Ls48;

    const-string v5, "MARCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls48;->g:Ls48;

    .line 4
    new-instance v5, Ls48;

    const-string v7, "APRIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ls48;->h:Ls48;

    .line 5
    new-instance v7, Ls48;

    const-string v9, "MAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ls48;->i:Ls48;

    .line 6
    new-instance v9, Ls48;

    const-string v11, "JUNE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ls48;->j:Ls48;

    .line 7
    new-instance v11, Ls48;

    const-string v13, "JULY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ls48;->k:Ls48;

    .line 8
    new-instance v13, Ls48;

    const-string v15, "AUGUST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ls48;->l:Ls48;

    .line 9
    new-instance v15, Ls48;

    const-string v14, "SEPTEMBER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ls48;->m:Ls48;

    .line 10
    new-instance v14, Ls48;

    const-string v12, "OCTOBER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ls48;->n:Ls48;

    .line 11
    new-instance v12, Ls48;

    const-string v10, "NOVEMBER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v12, Ls48;->o:Ls48;

    .line 12
    new-instance v10, Ls48;

    const-string v8, "DECEMBER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Ls48;-><init>(Ljava/lang/String;I)V

    sput-object v10, Ls48;->p:Ls48;

    const/16 v8, 0xc

    new-array v8, v8, [Ls48;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 13
    sput-object v8, Ls48;->r:[Ls48;

    .line 14
    invoke-static {}, Ls48;->values()[Ls48;

    move-result-object v0

    sput-object v0, Ls48;->q:[Ls48;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static O(I)Ls48;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xc

    if-gt p0, v1, :cond_0

    .line 1
    sget-object v1, Ls48;->q:[Ls48;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ll48;

    const-string v1, "Invalid value for MonthOfYear: "

    invoke-static {v1, p0}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Ls48;
    .locals 1

    .line 1
    const-class v0, Ls48;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls48;

    return-object p0
.end method

.method public static values()[Ls48;
    .locals 1

    .line 1
    sget-object v0, Ls48;->r:[Ls48;

    invoke-virtual {v0}, [Ls48;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls48;

    return-object v0
.end method


# virtual methods
.method public D(Ly68;)J
    .locals 2

    .line 1
    sget-object v0, Lq68;->F:Lq68;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls48;->L()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_0
    instance-of v0, p1, Lq68;

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public K(Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    add-int/lit16 p1, p1, 0x14f

    return p1

    :pswitch_0
    add-int/lit16 p1, p1, 0x112

    return p1

    :pswitch_1
    add-int/lit16 p1, p1, 0xd5

    return p1

    :pswitch_2
    add-int/lit16 p1, p1, 0xb6

    return p1

    :pswitch_3
    add-int/lit8 p1, p1, 0x79

    return p1

    :pswitch_4
    add-int/lit8 p1, p1, 0x3c

    return p1

    :pswitch_5
    const/4 p1, 0x1

    return p1

    :pswitch_6
    add-int/lit16 p1, p1, 0x131

    return p1

    :pswitch_7
    add-int/lit16 p1, p1, 0xf4

    return p1

    :pswitch_8
    add-int/lit16 p1, p1, 0x98

    return p1

    :pswitch_9
    add-int/lit8 p1, p1, 0x5b

    return p1

    :pswitch_a
    const/16 p1, 0x20

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public L()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public M(Z)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    const/16 p1, 0x1f

    return p1

    :cond_0
    const/16 p1, 0x1e

    return p1

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0x1d

    goto :goto_0

    :cond_2
    const/16 p1, 0x1c

    :goto_0
    return p1
.end method

.method public N()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1f

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0

    :cond_1
    const/16 v0, 0x1d

    return v0
.end method

.method public k(Ly68;)I
    .locals 3

    .line 1
    sget-object v0, Lq68;->F:Lq68;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls48;->L()I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ls48;->t(Ly68;)Ld78;

    move-result-object v0

    invoke-virtual {p0, p1}, Ls48;->D(Ly68;)J

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
    sget-object v0, Lq68;->F:Lq68;

    invoke-virtual {p0}, Ls48;->L()I

    move-result v1

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
    .locals 2

    .line 1
    sget-object v0, Lq68;->F:Lq68;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-interface {p1}, Ly68;->w()Ld78;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lq68;

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1, p0}, Ly68;->t(Lu68;)Ld78;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0
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
    sget-object p1, Lr68;->o:Lr68;

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
    invoke-interface {p1, p0}, La78;->a(Lu68;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public y(Ly68;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lq68;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lq68;->F:Lq68;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1, p0}, Ly68;->k(Lu68;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
