.class public final synthetic Lm26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc7;


# instance fields
.field public final e:Lo26;


# direct methods
.method public constructor <init>(Lo26;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm26;->e:Lo26;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lm26;->e:Lo26;

    check-cast p1, Lqg6;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lqg6;->E()J

    move-result-wide v1

    .line 3
    iget-object p1, v0, Lo26;->c:Lz86;

    invoke-interface {p1}, Lz86;->a()J

    move-result-wide v3

    .line 4
    new-instance p1, Ljava/io/File;

    iget-object v0, v0, Lo26;->b:Landroid/app/Application;

    .line 5
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v5, "fiam_eligible_campaigns_cache_file"

    invoke-direct {p1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmp-long v8, v1, v5

    if-eqz v8, :cond_0

    cmp-long p1, v3, v1

    if-gez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    :goto_0
    const/4 v0, 0x1

    :cond_1
    move v7, v0

    :cond_2
    return v7
.end method
