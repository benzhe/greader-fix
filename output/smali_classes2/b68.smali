.class public final Lb68;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lb68;

.field public static final i:Lb68;

.field public static final j:Lb68;

.field public static final k:Lb68;

.field public static final l:Lb68;


# instance fields
.field public final a:Lc68$d;

.field public final b:Ljava/util/Locale;

.field public final c:Lg68;

.field public final d:Li68;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ly68;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lj58;

.field public final g:Lz48;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

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

    const/16 v5, 0x2d

    .line 3
    invoke-virtual {v0, v5}, Lc68;->c(C)Lc68;

    sget-object v6, Lq68;->F:Lq68;

    const/4 v7, 0x2

    .line 4
    invoke-virtual {v0, v6, v7}, Lc68;->k(Ly68;I)Lc68;

    .line 5
    invoke-virtual {v0, v5}, Lc68;->c(C)Lc68;

    sget-object v8, Lq68;->A:Lq68;

    .line 6
    invoke-virtual {v0, v8, v7}, Lc68;->k(Ly68;I)Lc68;

    sget-object v9, Li68;->e:Li68;

    .line 7
    invoke-virtual {v0, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v0

    sget-object v10, Lo58;->g:Lo58;

    invoke-virtual {v0, v10}, Lb68;->b(Lj58;)Lb68;

    move-result-object v0

    sput-object v0, Lb68;->h:Lb68;

    .line 8
    new-instance v11, Lc68;

    invoke-direct {v11}, Lc68;-><init>()V

    .line 9
    sget-object v12, Lc68$n;->f:Lc68$n;

    invoke-virtual {v11, v12}, Lc68;->b(Lc68$e;)I

    .line 10
    invoke-virtual {v11, v0}, Lc68;->a(Lb68;)Lc68;

    .line 11
    sget-object v13, Lc68$k;->h:Lc68$k;

    invoke-virtual {v11, v13}, Lc68;->b(Lc68$e;)I

    .line 12
    invoke-virtual {v11, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v11

    invoke-virtual {v11, v10}, Lb68;->b(Lj58;)Lb68;

    .line 13
    new-instance v11, Lc68;

    invoke-direct {v11}, Lc68;-><init>()V

    .line 14
    invoke-virtual {v11, v12}, Lc68;->b(Lc68$e;)I

    .line 15
    invoke-virtual {v11, v0}, Lc68;->a(Lb68;)Lc68;

    .line 16
    invoke-virtual {v11}, Lc68;->n()Lc68;

    .line 17
    invoke-virtual {v11, v13}, Lc68;->b(Lc68$e;)I

    .line 18
    invoke-virtual {v11, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v11

    invoke-virtual {v11, v10}, Lb68;->b(Lj58;)Lb68;

    .line 19
    new-instance v11, Lc68;

    invoke-direct {v11}, Lc68;-><init>()V

    sget-object v14, Lq68;->u:Lq68;

    .line 20
    invoke-virtual {v11, v14, v7}, Lc68;->k(Ly68;I)Lc68;

    const/16 v15, 0x3a

    .line 21
    invoke-virtual {v11, v15}, Lc68;->c(C)Lc68;

    sget-object v5, Lq68;->q:Lq68;

    .line 22
    invoke-virtual {v11, v5, v7}, Lc68;->k(Ly68;I)Lc68;

    .line 23
    invoke-virtual {v11}, Lc68;->n()Lc68;

    .line 24
    invoke-virtual {v11, v15}, Lc68;->c(C)Lc68;

    sget-object v15, Lq68;->o:Lq68;

    .line 25
    invoke-virtual {v11, v15, v7}, Lc68;->k(Ly68;I)Lc68;

    .line 26
    invoke-virtual {v11}, Lc68;->n()Lc68;

    sget-object v7, Lq68;->i:Lq68;

    .line 27
    new-instance v3, Lc68$f;

    const/4 v4, 0x0

    move-object/from16 v17, v15

    const/16 v15, 0x9

    move-object/from16 v18, v5

    const/4 v5, 0x1

    invoke-direct {v3, v7, v4, v15, v5}, Lc68$f;-><init>(Ly68;IIZ)V

    invoke-virtual {v11, v3}, Lc68;->b(Lc68$e;)I

    .line 28
    invoke-virtual {v11, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v3

    sput-object v3, Lb68;->i:Lb68;

    .line 29
    new-instance v4, Lc68;

    invoke-direct {v4}, Lc68;-><init>()V

    .line 30
    invoke-virtual {v4, v12}, Lc68;->b(Lc68$e;)I

    .line 31
    invoke-virtual {v4, v3}, Lc68;->a(Lb68;)Lc68;

    .line 32
    invoke-virtual {v4, v13}, Lc68;->b(Lc68$e;)I

    .line 33
    invoke-virtual {v4, v9}, Lc68;->q(Li68;)Lb68;

    .line 34
    new-instance v4, Lc68;

    invoke-direct {v4}, Lc68;-><init>()V

    .line 35
    invoke-virtual {v4, v12}, Lc68;->b(Lc68$e;)I

    .line 36
    invoke-virtual {v4, v3}, Lc68;->a(Lb68;)Lc68;

    .line 37
    invoke-virtual {v4}, Lc68;->n()Lc68;

    .line 38
    invoke-virtual {v4, v13}, Lc68;->b(Lc68$e;)I

    .line 39
    invoke-virtual {v4, v9}, Lc68;->q(Li68;)Lb68;

    .line 40
    new-instance v4, Lc68;

    invoke-direct {v4}, Lc68;-><init>()V

    .line 41
    invoke-virtual {v4, v12}, Lc68;->b(Lc68$e;)I

    .line 42
    invoke-virtual {v4, v0}, Lc68;->a(Lb68;)Lc68;

    const/16 v0, 0x54

    .line 43
    invoke-virtual {v4, v0}, Lc68;->c(C)Lc68;

    .line 44
    invoke-virtual {v4, v3}, Lc68;->a(Lb68;)Lc68;

    .line 45
    invoke-virtual {v4, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v0

    invoke-virtual {v0, v10}, Lb68;->b(Lj58;)Lb68;

    move-result-object v0

    sput-object v0, Lb68;->j:Lb68;

    .line 46
    new-instance v3, Lc68;

    invoke-direct {v3}, Lc68;-><init>()V

    .line 47
    invoke-virtual {v3, v12}, Lc68;->b(Lc68$e;)I

    .line 48
    invoke-virtual {v3, v0}, Lc68;->a(Lb68;)Lc68;

    .line 49
    invoke-virtual {v3, v13}, Lc68;->b(Lc68$e;)I

    .line 50
    invoke-virtual {v3, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v3

    invoke-virtual {v3, v10}, Lb68;->b(Lj58;)Lb68;

    move-result-object v3

    sput-object v3, Lb68;->k:Lb68;

    .line 51
    new-instance v4, Lc68;

    invoke-direct {v4}, Lc68;-><init>()V

    .line 52
    invoke-virtual {v4, v3}, Lc68;->a(Lb68;)Lc68;

    .line 53
    invoke-virtual {v4}, Lc68;->n()Lc68;

    const/16 v3, 0x5b

    .line 54
    invoke-virtual {v4, v3}, Lc68;->c(C)Lc68;

    .line 55
    sget-object v7, Lc68$n;->e:Lc68$n;

    invoke-virtual {v4, v7}, Lc68;->b(Lc68$e;)I

    .line 56
    new-instance v11, Lc68$r;

    sget-object v15, Lc68;->h:La78;

    const-string v5, "ZoneRegionId()"

    invoke-direct {v11, v15, v5}, Lc68$r;-><init>(La78;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Lc68;->b(Lc68$e;)I

    const/16 v11, 0x5d

    .line 57
    invoke-virtual {v4, v11}, Lc68;->c(C)Lc68;

    .line 58
    invoke-virtual {v4, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v4

    invoke-virtual {v4, v10}, Lb68;->b(Lj58;)Lb68;

    .line 59
    new-instance v4, Lc68;

    invoke-direct {v4}, Lc68;-><init>()V

    .line 60
    invoke-virtual {v4, v0}, Lc68;->a(Lb68;)Lc68;

    .line 61
    invoke-virtual {v4}, Lc68;->n()Lc68;

    .line 62
    invoke-virtual {v4, v13}, Lc68;->b(Lc68$e;)I

    .line 63
    invoke-virtual {v4}, Lc68;->n()Lc68;

    .line 64
    invoke-virtual {v4, v3}, Lc68;->c(C)Lc68;

    .line 65
    invoke-virtual {v4, v7}, Lc68;->b(Lc68$e;)I

    .line 66
    new-instance v0, Lc68$r;

    invoke-direct {v0, v15, v5}, Lc68$r;-><init>(La78;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lc68;->b(Lc68$e;)I

    .line 67
    invoke-virtual {v4, v11}, Lc68;->c(C)Lc68;

    .line 68
    invoke-virtual {v4, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v0

    invoke-virtual {v0, v10}, Lb68;->b(Lj58;)Lb68;

    .line 69
    new-instance v0, Lc68;

    invoke-direct {v0}, Lc68;-><init>()V

    .line 70
    invoke-virtual {v0, v12}, Lc68;->b(Lc68$e;)I

    const/16 v3, 0xa

    const/4 v4, 0x4

    .line 71
    invoke-virtual {v0, v1, v4, v3, v2}, Lc68;->l(Ly68;IILj68;)Lc68;

    move-result-object v0

    const/16 v3, 0x2d

    .line 72
    invoke-virtual {v0, v3}, Lc68;->c(C)Lc68;

    sget-object v3, Lq68;->B:Lq68;

    const/4 v4, 0x3

    .line 73
    invoke-virtual {v0, v3, v4}, Lc68;->k(Ly68;I)Lc68;

    .line 74
    invoke-virtual {v0}, Lc68;->n()Lc68;

    .line 75
    invoke-virtual {v0, v13}, Lc68;->b(Lc68$e;)I

    .line 76
    invoke-virtual {v0, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v0

    invoke-virtual {v0, v10}, Lb68;->b(Lj58;)Lb68;

    .line 77
    new-instance v0, Lc68;

    invoke-direct {v0}, Lc68;-><init>()V

    .line 78
    invoke-virtual {v0, v12}, Lc68;->b(Lc68$e;)I

    .line 79
    sget-object v3, Ls68;->a:Lb78;

    sget-object v3, Ls68$b;->h:Ls68$b;

    const/16 v4, 0xa

    const/4 v5, 0x4

    .line 80
    invoke-virtual {v0, v3, v5, v4, v2}, Lc68;->l(Ly68;IILj68;)Lc68;

    move-result-object v0

    const-string v2, "-W"

    .line 81
    invoke-virtual {v0, v2}, Lc68;->d(Ljava/lang/String;)Lc68;

    sget-object v2, Ls68$b;->g:Ls68$b;

    const/4 v3, 0x2

    .line 82
    invoke-virtual {v0, v2, v3}, Lc68;->k(Ly68;I)Lc68;

    const/16 v2, 0x2d

    .line 83
    invoke-virtual {v0, v2}, Lc68;->c(C)Lc68;

    sget-object v2, Lq68;->x:Lq68;

    const/4 v3, 0x1

    .line 84
    invoke-virtual {v0, v2, v3}, Lc68;->k(Ly68;I)Lc68;

    .line 85
    invoke-virtual {v0}, Lc68;->n()Lc68;

    .line 86
    invoke-virtual {v0, v13}, Lc68;->b(Lc68$e;)I

    .line 87
    invoke-virtual {v0, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v0

    invoke-virtual {v0, v10}, Lb68;->b(Lj58;)Lb68;

    .line 88
    new-instance v0, Lc68;

    invoke-direct {v0}, Lc68;-><init>()V

    .line 89
    invoke-virtual {v0, v12}, Lc68;->b(Lc68$e;)I

    .line 90
    new-instance v3, Lc68$g;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Lc68$g;-><init>(I)V

    invoke-virtual {v0, v3}, Lc68;->b(Lc68$e;)I

    .line 91
    invoke-virtual {v0, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v0

    sput-object v0, Lb68;->l:Lb68;

    .line 92
    new-instance v0, Lc68;

    invoke-direct {v0}, Lc68;-><init>()V

    .line 93
    invoke-virtual {v0, v12}, Lc68;->b(Lc68$e;)I

    const/4 v3, 0x4

    .line 94
    invoke-virtual {v0, v1, v3}, Lc68;->k(Ly68;I)Lc68;

    const/4 v3, 0x2

    .line 95
    invoke-virtual {v0, v6, v3}, Lc68;->k(Ly68;I)Lc68;

    .line 96
    invoke-virtual {v0, v8, v3}, Lc68;->k(Ly68;I)Lc68;

    .line 97
    invoke-virtual {v0}, Lc68;->n()Lc68;

    const-string v3, "+HHMMss"

    const-string v4, "Z"

    .line 98
    invoke-virtual {v0, v3, v4}, Lc68;->f(Ljava/lang/String;Ljava/lang/String;)Lc68;

    .line 99
    invoke-virtual {v0, v9}, Lc68;->q(Li68;)Lb68;

    move-result-object v0

    invoke-virtual {v0, v10}, Lb68;->b(Lj58;)Lb68;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x1

    .line 101
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Mon"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x2

    .line 102
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Tue"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v15, 0x3

    .line 103
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "Wed"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v15, 0x4

    .line 104
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "Thu"

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v15, 0x5

    .line 105
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "Fri"

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v15, 0x6

    .line 106
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "Sat"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v15, 0x7

    .line 107
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v15, "Sun"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v10

    const-string v10, "Jan"

    .line 109
    invoke-virtual {v15, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Feb"

    .line 110
    invoke-virtual {v15, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Mar"

    .line 111
    invoke-virtual {v15, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Apr"

    .line 112
    invoke-virtual {v15, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "May"

    .line 113
    invoke-virtual {v15, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Jun"

    .line 114
    invoke-virtual {v15, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Jul"

    .line 115
    invoke-virtual {v15, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x8

    .line 116
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Aug"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x9

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Sep"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xa

    .line 118
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Oct"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xb

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Nov"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xc

    .line 120
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Dec"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v3, Lc68;

    invoke-direct {v3}, Lc68;-><init>()V

    .line 122
    invoke-virtual {v3, v12}, Lc68;->b(Lc68$e;)I

    .line 123
    sget-object v4, Lc68$n;->h:Lc68$n;

    invoke-virtual {v3, v4}, Lc68;->b(Lc68$e;)I

    .line 124
    invoke-virtual {v3}, Lc68;->n()Lc68;

    .line 125
    invoke-virtual {v3, v2, v0}, Lc68;->g(Ly68;Ljava/util/Map;)Lc68;

    const-string v0, ", "

    .line 126
    invoke-virtual {v3, v0}, Lc68;->d(Ljava/lang/String;)Lc68;

    .line 127
    invoke-virtual {v3}, Lc68;->m()Lc68;

    sget-object v0, Lj68;->h:Lj68;

    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 128
    invoke-virtual {v3, v8, v2, v4, v0}, Lc68;->l(Ly68;IILj68;)Lc68;

    move-result-object v0

    const/16 v2, 0x20

    .line 129
    invoke-virtual {v0, v2}, Lc68;->c(C)Lc68;

    .line 130
    invoke-virtual {v0, v6, v15}, Lc68;->g(Ly68;Ljava/util/Map;)Lc68;

    .line 131
    invoke-virtual {v0, v2}, Lc68;->c(C)Lc68;

    const/4 v3, 0x4

    .line 132
    invoke-virtual {v0, v1, v3}, Lc68;->k(Ly68;I)Lc68;

    .line 133
    invoke-virtual {v0, v2}, Lc68;->c(C)Lc68;

    .line 134
    invoke-virtual {v0, v14, v4}, Lc68;->k(Ly68;I)Lc68;

    const/16 v1, 0x3a

    .line 135
    invoke-virtual {v0, v1}, Lc68;->c(C)Lc68;

    move-object/from16 v3, v18

    .line 136
    invoke-virtual {v0, v3, v4}, Lc68;->k(Ly68;I)Lc68;

    .line 137
    invoke-virtual {v0}, Lc68;->n()Lc68;

    .line 138
    invoke-virtual {v0, v1}, Lc68;->c(C)Lc68;

    move-object/from16 v1, v17

    .line 139
    invoke-virtual {v0, v1, v4}, Lc68;->k(Ly68;I)Lc68;

    .line 140
    invoke-virtual {v0}, Lc68;->m()Lc68;

    .line 141
    invoke-virtual {v0, v2}, Lc68;->c(C)Lc68;

    const-string v1, "+HHMM"

    const-string v2, "GMT"

    .line 142
    invoke-virtual {v0, v1, v2}, Lc68;->f(Ljava/lang/String;Ljava/lang/String;)Lc68;

    sget-object v1, Li68;->f:Li68;

    .line 143
    invoke-virtual {v0, v1}, Lc68;->q(Li68;)Lb68;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lb68;->b(Lj58;)Lb68;

    return-void
.end method

.method public constructor <init>(Lc68$d;Ljava/util/Locale;Lg68;Li68;Ljava/util/Set;Lj58;Lz48;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc68$d;",
            "Ljava/util/Locale;",
            "Lg68;",
            "Li68;",
            "Ljava/util/Set<",
            "Ly68;",
            ">;",
            "Lj58;",
            "Lz48;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "printerParser"

    .line 2
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lc68$d;

    iput-object p1, p0, Lb68;->a:Lc68$d;

    const-string p1, "locale"

    .line 3
    invoke-static {p2, p1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/util/Locale;

    iput-object p2, p0, Lb68;->b:Ljava/util/Locale;

    const-string p1, "decimalStyle"

    .line 4
    invoke-static {p3, p1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lg68;

    iput-object p3, p0, Lb68;->c:Lg68;

    const-string p1, "resolverStyle"

    .line 5
    invoke-static {p4, p1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Li68;

    iput-object p4, p0, Lb68;->d:Li68;

    .line 6
    iput-object p5, p0, Lb68;->e:Ljava/util/Set;

    .line 7
    iput-object p6, p0, Lb68;->f:Lj58;

    .line 8
    iput-object p7, p0, Lb68;->g:Lz48;

    return-void
.end method


# virtual methods
.method public a(Lu68;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "temporal"

    .line 2
    invoke-static {p1, v1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "appendable"

    .line 3
    invoke-static {v0, v1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    :try_start_0
    new-instance v1, Le68;

    invoke-direct {v1, p1, p0}, Le68;-><init>(Lu68;Lb68;)V

    .line 5
    iget-object p1, p0, Lb68;->a:Lc68$d;

    invoke-virtual {p1, v1, v0}, Lc68$d;->i(Le68;Ljava/lang/StringBuilder;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ll48;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ll48;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lj58;)Lb68;
    .locals 9

    .line 1
    iget-object v0, p0, Lb68;->f:Lj58;

    invoke-static {v0, p1}, Lkt7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lb68;

    iget-object v2, p0, Lb68;->a:Lc68$d;

    iget-object v3, p0, Lb68;->b:Ljava/util/Locale;

    iget-object v4, p0, Lb68;->c:Lg68;

    iget-object v5, p0, Lb68;->d:Li68;

    iget-object v6, p0, Lb68;->e:Ljava/util/Set;

    iget-object v8, p0, Lb68;->g:Lz48;

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lb68;-><init>(Lc68$d;Ljava/util/Locale;Lg68;Li68;Ljava/util/Set;Lj58;Lz48;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lb68;->a:Lc68$d;

    invoke-virtual {v0}, Lc68$d;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
