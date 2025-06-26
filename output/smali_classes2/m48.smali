.class public final enum Lm48;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu68;
.implements Lv68;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm48;",
        ">;",
        "Lu68;",
        "Lv68;"
    }
.end annotation


# static fields
.field public static final enum e:Lm48;

.field public static final enum f:Lm48;

.field public static final enum g:Lm48;

.field public static final enum h:Lm48;

.field public static final enum i:Lm48;

.field public static final enum j:Lm48;

.field public static final enum k:Lm48;

.field public static final l:[Lm48;

.field public static final synthetic m:[Lm48;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lm48;

    const-string v1, "MONDAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm48;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm48;->e:Lm48;

    .line 2
    new-instance v1, Lm48;

    const-string v3, "TUESDAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lm48;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm48;->f:Lm48;

    .line 3
    new-instance v3, Lm48;

    const-string v5, "WEDNESDAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lm48;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm48;->g:Lm48;

    .line 4
    new-instance v5, Lm48;

    const-string v7, "THURSDAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lm48;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lm48;->h:Lm48;

    .line 5
    new-instance v7, Lm48;

    const-string v9, "FRIDAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lm48;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lm48;->i:Lm48;

    .line 6
    new-instance v9, Lm48;

    const-string v11, "SATURDAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lm48;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lm48;->j:Lm48;

    .line 7
    new-instance v11, Lm48;

    const-string v13, "SUNDAY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lm48;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lm48;->k:Lm48;

    const/4 v13, 0x7

    new-array v13, v13, [Lm48;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lm48;->m:[Lm48;

    .line 9
    invoke-static {}, Lm48;->values()[Lm48;

    move-result-object v0

    sput-object v0, Lm48;->l:[Lm48;

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

.method public static L(I)Lm48;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    .line 1
    sget-object v1, Lm48;->l:[Lm48;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ll48;

    const-string v1, "Invalid value for DayOfWeek: "

    invoke-static {v1, p0}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lm48;
    .locals 1

    .line 1
    const-class v0, Lm48;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm48;

    return-object p0
.end method

.method public static values()[Lm48;
    .locals 1

    .line 1
    sget-object v0, Lm48;->m:[Lm48;

    invoke-virtual {v0}, [Lm48;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm48;

    return-object v0
.end method


# virtual methods
.method public D(Ly68;)J
    .locals 2

    .line 1
    sget-object v0, Lq68;->x:Lq68;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lm48;->K()I

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

.method public K()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k(Ly68;)I
    .locals 3

    .line 1
    sget-object v0, Lq68;->x:Lq68;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lm48;->K()I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lm48;->t(Ly68;)Ld78;

    move-result-object v0

    invoke-virtual {p0, p1}, Lm48;->D(Ly68;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ld78;->a(JLy68;)I

    move-result p1

    return p1
.end method

.method public l(Lt68;)Lt68;
    .locals 3

    .line 1
    sget-object v0, Lq68;->x:Lq68;

    invoke-virtual {p0}, Lm48;->K()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public t(Ly68;)Ld78;
    .locals 2

    .line 1
    sget-object v0, Lq68;->x:Lq68;

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
    sget-object v0, Lz68;->c:La78;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lr68;->m:Lr68;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lz68;->f:La78;

    if-eq p1, v0, :cond_2

    sget-object v0, Lz68;->g:La78;

    if-eq p1, v0, :cond_2

    sget-object v0, Lz68;->b:La78;

    if-eq p1, v0, :cond_2

    .line 4
    sget-object v0, Lz68;->d:La78;

    if-eq p1, v0, :cond_2

    sget-object v0, Lz68;->a:La78;

    if-eq p1, v0, :cond_2

    sget-object v0, Lz68;->e:La78;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1, p0}, La78;->a(Lu68;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
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
    sget-object v0, Lq68;->x:Lq68;

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
