.class public Lo97;
.super Le57;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo97$b;,
        Lo97$a;
    }
.end annotation


# static fields
.field public static final q:Lxs7;


# instance fields
.field public final g:Lj47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj47<",
            "**>;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;

.field public final i:La97;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Object;

.field public volatile l:I

.field public final m:Lo97$b;

.field public final n:Lo97$a;

.field public final o:Lv27;

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxs7;

    invoke-direct {v0}, Lxs7;-><init>()V

    sput-object v0, Lo97;->q:Lxs7;

    return-void
.end method

.method public constructor <init>(Lj47;Li47;Lk97;Lp97;Lw97;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;La97;Lg97;Lx27;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj47<",
            "**>;",
            "Li47;",
            "Lk97;",
            "Lp97;",
            "Lw97;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "La97;",
            "Lg97;",
            "Lx27;",
            "Z)V"
        }
    .end annotation

    move-object v10, p0

    move-object v7, p1

    move-object/from16 v8, p11

    .line 1
    new-instance v1, Lv97;

    invoke-direct {v1}, Lv97;-><init>()V

    const/4 v9, 0x0

    if-eqz p14, :cond_0

    .line 2
    iget-boolean v0, v7, Lj47;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object v4, p2

    move-object/from16 v5, p13

    .line 3
    invoke-direct/range {v0 .. v6}, Le57;-><init>(Li97;La97;Lg97;Li47;Lx27;Z)V

    const/4 v0, -0x1

    .line 4
    iput v0, v10, Lo97;->l:I

    .line 5
    new-instance v0, Lo97$a;

    invoke-direct {v0, p0}, Lo97$a;-><init>(Lo97;)V

    iput-object v0, v10, Lo97;->n:Lo97$a;

    .line 6
    iput-boolean v9, v10, Lo97;->p:Z

    const-string v0, "statsTraceCtx"

    .line 7
    invoke-static {v8, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v8, v10, Lo97;->i:La97;

    .line 8
    iput-object v7, v10, Lo97;->g:Lj47;

    move-object/from16 v0, p9

    .line 9
    iput-object v0, v10, Lo97;->j:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 10
    iput-object v0, v10, Lo97;->h:Ljava/lang/String;

    move-object/from16 v9, p4

    .line 11
    iget-object v0, v9, Lp97;->s:Lv27;

    .line 12
    iput-object v0, v10, Lo97;->o:Lv27;

    .line 13
    new-instance v11, Lo97$b;

    .line 14
    iget-object v12, v7, Lj47;->b:Ljava/lang/String;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p11

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p8

    move-object v9, v12

    .line 15
    invoke-direct/range {v0 .. v9}, Lo97$b;-><init>(Lo97;ILa97;Ljava/lang/Object;Lk97;Lw97;Lp97;ILjava/lang/String;)V

    iput-object v11, v10, Lo97;->m:Lo97$b;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "authority"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo97;->j:Ljava/lang/String;

    return-void
.end method

.method public o()Le57$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lo97;->n:Lo97$a;

    return-object v0
.end method

.method public p()Le57$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lo97;->m:Lo97$b;

    return-object v0
.end method

.method public q()Lh57$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo97;->m:Lo97$b;

    return-object v0
.end method
