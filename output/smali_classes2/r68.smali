.class public final enum Lr68;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lb78;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr68;",
        ">;",
        "Lb78;"
    }
.end annotation


# static fields
.field public static final enum f:Lr68;

.field public static final enum g:Lr68;

.field public static final enum h:Lr68;

.field public static final enum i:Lr68;

.field public static final enum j:Lr68;

.field public static final enum k:Lr68;

.field public static final enum l:Lr68;

.field public static final enum m:Lr68;

.field public static final enum n:Lr68;

.field public static final enum o:Lr68;

.field public static final enum p:Lr68;

.field public static final enum q:Lr68;

.field public static final enum r:Lr68;

.field public static final enum s:Lr68;

.field public static final enum t:Lr68;

.field public static final enum u:Lr68;

.field public static final synthetic v:[Lr68;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lr68;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ln48;->k(J)Ln48;

    move-result-object v3

    const-string v4, "NANOS"

    const/4 v5, 0x0

    const-string v6, "Nanos"

    invoke-direct {v0, v4, v5, v6, v3}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v0, Lr68;->f:Lr68;

    .line 2
    new-instance v3, Lr68;

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ln48;->k(J)Ln48;

    move-result-object v4

    const-string v6, "MICROS"

    const/4 v7, 0x1

    const-string v8, "Micros"

    invoke-direct {v3, v6, v7, v8, v4}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v3, Lr68;->g:Lr68;

    .line 3
    new-instance v4, Lr68;

    const-wide/32 v8, 0xf4240

    invoke-static {v8, v9}, Ln48;->k(J)Ln48;

    move-result-object v6

    const-string v8, "MILLIS"

    const/4 v9, 0x2

    const-string v10, "Millis"

    invoke-direct {v4, v8, v9, v10, v6}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v4, Lr68;->h:Lr68;

    .line 4
    new-instance v6, Lr68;

    invoke-static {v1, v2}, Ln48;->l(J)Ln48;

    move-result-object v1

    const-string v2, "SECONDS"

    const/4 v8, 0x3

    const-string v10, "Seconds"

    invoke-direct {v6, v2, v8, v10, v1}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v6, Lr68;->i:Lr68;

    .line 5
    new-instance v1, Lr68;

    const-wide/16 v10, 0x3c

    invoke-static {v10, v11}, Ln48;->l(J)Ln48;

    move-result-object v2

    const-string v10, "MINUTES"

    const/4 v11, 0x4

    const-string v12, "Minutes"

    invoke-direct {v1, v10, v11, v12, v2}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v1, Lr68;->j:Lr68;

    .line 6
    new-instance v2, Lr68;

    const-wide/16 v12, 0xe10

    invoke-static {v12, v13}, Ln48;->l(J)Ln48;

    move-result-object v10

    const-string v12, "HOURS"

    const/4 v13, 0x5

    const-string v14, "Hours"

    invoke-direct {v2, v12, v13, v14, v10}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v2, Lr68;->k:Lr68;

    .line 7
    new-instance v10, Lr68;

    const-wide/32 v14, 0xa8c0

    invoke-static {v14, v15}, Ln48;->l(J)Ln48;

    move-result-object v12

    const-string v14, "HALF_DAYS"

    const/4 v15, 0x6

    const-string v13, "HalfDays"

    invoke-direct {v10, v14, v15, v13, v12}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v10, Lr68;->l:Lr68;

    .line 8
    new-instance v12, Lr68;

    const-wide/32 v13, 0x15180

    invoke-static {v13, v14}, Ln48;->l(J)Ln48;

    move-result-object v13

    const-string v14, "DAYS"

    const/4 v15, 0x7

    const-string v11, "Days"

    invoke-direct {v12, v14, v15, v11, v13}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v12, Lr68;->m:Lr68;

    .line 9
    new-instance v11, Lr68;

    const-wide/32 v13, 0x93a80

    invoke-static {v13, v14}, Ln48;->l(J)Ln48;

    move-result-object v13

    const-string v14, "WEEKS"

    const/16 v15, 0x8

    const-string v8, "Weeks"

    invoke-direct {v11, v14, v15, v8, v13}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v11, Lr68;->n:Lr68;

    .line 10
    new-instance v8, Lr68;

    const-wide/32 v13, 0x282072

    invoke-static {v13, v14}, Ln48;->l(J)Ln48;

    move-result-object v13

    const-string v14, "MONTHS"

    const/16 v15, 0x9

    const-string v9, "Months"

    invoke-direct {v8, v14, v15, v9, v13}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v8, Lr68;->o:Lr68;

    .line 11
    new-instance v9, Lr68;

    const-wide/32 v13, 0x1e18558

    invoke-static {v13, v14}, Ln48;->l(J)Ln48;

    move-result-object v13

    const-string v14, "YEARS"

    const/16 v15, 0xa

    const-string v7, "Years"

    invoke-direct {v9, v14, v15, v7, v13}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v9, Lr68;->p:Lr68;

    .line 12
    new-instance v7, Lr68;

    const-wide/32 v13, 0x12cf3570

    invoke-static {v13, v14}, Ln48;->l(J)Ln48;

    move-result-object v13

    const-string v14, "DECADES"

    const/16 v15, 0xb

    const-string v5, "Decades"

    invoke-direct {v7, v14, v15, v5, v13}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v7, Lr68;->q:Lr68;

    .line 13
    new-instance v5, Lr68;

    const-wide v13, 0xbc181660L

    invoke-static {v13, v14}, Ln48;->l(J)Ln48;

    move-result-object v13

    const-string v14, "CENTURIES"

    const/16 v15, 0xc

    move-object/from16 v16, v7

    const-string v7, "Centuries"

    invoke-direct {v5, v14, v15, v7, v13}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v5, Lr68;->r:Lr68;

    .line 14
    new-instance v7, Lr68;

    const-wide v13, 0x758f0dfc0L

    invoke-static {v13, v14}, Ln48;->l(J)Ln48;

    move-result-object v13

    const-string v14, "MILLENNIA"

    const/16 v15, 0xd

    move-object/from16 v17, v5

    const-string v5, "Millennia"

    invoke-direct {v7, v14, v15, v5, v13}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v7, Lr68;->s:Lr68;

    .line 15
    new-instance v5, Lr68;

    const-wide v13, 0x701ce172277000L

    invoke-static {v13, v14}, Ln48;->l(J)Ln48;

    move-result-object v13

    const-string v14, "ERAS"

    const/16 v15, 0xe

    move-object/from16 v18, v7

    const-string v7, "Eras"

    invoke-direct {v5, v14, v15, v7, v13}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v5, Lr68;->t:Lr68;

    .line 16
    new-instance v7, Lr68;

    const-wide v13, 0x7fffffffffffffffL

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    const-wide/32 v8, 0x3b9ac9ff

    invoke-static {v13, v14, v8, v9}, Ln48;->t(JJ)Ln48;

    move-result-object v8

    const-string v9, "FOREVER"

    const/16 v13, 0xf

    const-string v14, "Forever"

    invoke-direct {v7, v9, v13, v14, v8}, Lr68;-><init>(Ljava/lang/String;ILjava/lang/String;Ln48;)V

    sput-object v7, Lr68;->u:Lr68;

    const/16 v8, 0x10

    new-array v8, v8, [Lr68;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v3, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    const/4 v0, 0x4

    aput-object v1, v8, v0

    const/4 v0, 0x5

    aput-object v2, v8, v0

    const/4 v0, 0x6

    aput-object v10, v8, v0

    const/4 v0, 0x7

    aput-object v12, v8, v0

    const/16 v0, 0x8

    aput-object v11, v8, v0

    const/16 v0, 0x9

    aput-object v19, v8, v0

    const/16 v0, 0xa

    aput-object v20, v8, v0

    const/16 v0, 0xb

    aput-object v16, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    const/16 v0, 0xd

    aput-object v18, v8, v0

    aput-object v5, v8, v15

    aput-object v7, v8, v13

    .line 17
    sput-object v8, Lr68;->v:[Lr68;

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
    iput-object p3, p0, Lr68;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr68;
    .locals 1

    .line 1
    const-class v0, Lr68;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr68;

    return-object p0
.end method

.method public static values()[Lr68;
    .locals 1

    .line 1
    sget-object v0, Lr68;->v:[Lr68;

    invoke-virtual {v0}, [Lr68;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr68;

    return-object v0
.end method


# virtual methods
.method public i()Z
    .locals 1

    .line 1
    sget-object v0, Lr68;->m:Lr68;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lr68;->u:Lr68;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Lt68;J)Lt68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lt68;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2, p3, p0}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lr68;->e:Ljava/lang/String;

    return-object v0
.end method
