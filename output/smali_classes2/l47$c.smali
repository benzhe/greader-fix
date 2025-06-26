.class public abstract Ll47$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# static fields
.field public static final a:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Lt47;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Lb57;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Ll47$g;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv27$c;

    const-string v1, "params-default-port"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Ll47$c;->a:Lv27$c;

    .line 3
    new-instance v0, Lv27$c;

    const-string v1, "params-proxy-detector"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 4
    sput-object v0, Ll47$c;->b:Lv27$c;

    .line 5
    new-instance v0, Lv27$c;

    const-string v1, "params-sync-context"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Ll47$c;->c:Lv27$c;

    .line 7
    new-instance v0, Lv27$c;

    const-string v1, "params-parser"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Ll47$c;->d:Lv27$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public b(Ljava/net/URI;Ll47$a;)Ll47;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ll47$c$a;

    move-object/from16 v2, p2

    invoke-direct {v1, v0, v2}, Ll47$c$a;-><init>(Ll47$c;Ll47$a;)V

    .line 2
    invoke-static {}, Lv27;->a()Lv27$b;

    move-result-object v2

    sget-object v3, Ll47$c;->a:Lv27$c;

    .line 3
    iget-object v4, v1, Ll47$c$a;->a:Ll47$a;

    .line 4
    iget v4, v4, Ll47$a;->a:I

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    sget-object v4, Ll47$c;->b:Lv27$c;

    .line 6
    iget-object v5, v1, Ll47$c$a;->a:Ll47$a;

    .line 7
    iget-object v5, v5, Ll47$a;->b:Lt47;

    .line 8
    invoke-virtual {v2, v4, v5}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    sget-object v5, Ll47$c;->c:Lv27$c;

    .line 9
    iget-object v6, v1, Ll47$c$a;->a:Ll47$a;

    .line 10
    iget-object v6, v6, Ll47$a;->c:Lb57;

    .line 11
    invoke-virtual {v2, v5, v6}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    sget-object v6, Ll47$c;->d:Lv27$c;

    new-instance v7, Lm47;

    invoke-direct {v7, v0, v1}, Lm47;-><init>(Ll47$c;Ll47$d;)V

    .line 12
    invoke-virtual {v2, v6, v7}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    .line 13
    invoke-virtual {v2}, Lv27$b;->a()Lv27;

    move-result-object v1

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 14
    iget-object v2, v1, Lv27;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 17
    iget-object v2, v1, Lv27;->a:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    move-object v9, v2

    check-cast v9, Lt47;

    .line 19
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v2, v1, Lv27;->a:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    move-object v10, v2

    check-cast v10, Lb57;

    .line 22
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v1, v1, Lv27;->a:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    move-object v11, v1

    check-cast v11, Ll47$g;

    .line 25
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Ll47$a;

    const/4 v15, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Ll47$a;-><init>(Ljava/lang/Integer;Lt47;Lb57;Ll47$g;Ljava/util/concurrent/ScheduledExecutorService;Lz27;Ljava/util/concurrent/Executor;Lk47;)V

    move-object/from16 v2, p1

    .line 27
    invoke-virtual {v0, v2, v1}, Ll47$c;->b(Ljava/net/URI;Ll47$a;)Ll47;

    move-result-object v1

    return-object v1
.end method
