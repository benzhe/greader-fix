.class public final synthetic Ld50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Le50;


# direct methods
.method public constructor <init>(Le50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld50;->e:Le50;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ld50;->e:Le50;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, v0, Le50;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo50;

    .line 3
    invoke-virtual {v1}, Lo50;->c()Ln50;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object v3, v2, Ln50;->a:Ljava/lang/String;

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iget-object v3, v0, Le50;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lo50;->d()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Le50;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Le50;->b(Ljava/util/Map;Ln50;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CsiReporter:reporter interrupted"

    .line 7
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
