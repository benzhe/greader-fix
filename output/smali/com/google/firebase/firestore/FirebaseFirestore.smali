.class public Lcom/google/firebase/firestore/FirebaseFirestore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/FirebaseFirestore$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lwt5;

.field public final c:Ljava/lang/String;

.field public final d:Lop5;

.field public final e:Lex5;

.field public final f:Lmp5;

.field public g:Lap5;

.field public volatile h:Lmq5;

.field public final i:Ljw5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwt5;Ljava/lang/String;Lop5;Lex5;Lpe5;Lcom/google/firebase/firestore/FirebaseFirestore$a;Ljw5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->b:Lwt5;

    .line 5
    new-instance p1, Lmp5;

    invoke-direct {p1, p2}, Lmp5;-><init>(Lwt5;)V

    iput-object p1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->f:Lmp5;

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->c:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->d:Lop5;

    .line 9
    iput-object p5, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->e:Lex5;

    .line 10
    iput-object p8, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->i:Ljw5;

    .line 11
    new-instance p1, Lap5$b;

    invoke-direct {p1}, Lap5$b;-><init>()V

    .line 12
    new-instance p2, Lap5;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lap5;-><init>(Lap5$b;Lap5$a;)V

    .line 13
    iput-object p2, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->g:Lap5;

    return-void
.end method

.method public static b(Landroid/content/Context;Lpe5;Lof5;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestore$a;Ljw5;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lpe5;->a()V

    .line 2
    iget-object v0, p1, Lpe5;->c:Lve5;

    .line 3
    iget-object v0, v0, Lve5;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    new-instance v3, Lwt5;

    invoke-direct {v3, v0, p3}, Lwt5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v6, Lex5;

    invoke-direct {v6}, Lex5;-><init>()V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 6
    sget-object p3, Lqx5$a;->e:Lqx5$a;

    const-string v0, "FirebaseFirestore"

    const-string v1, "Firebase Auth not available, falling back to unauthenticated usage."

    invoke-static {p3, v0, v1, p2}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance p2, Lpp5;

    invoke-direct {p2}, Lpp5;-><init>()V

    move-object v5, p2

    goto :goto_0

    .line 8
    :cond_0
    new-instance p3, Lsp5;

    invoke-direct {p3, p2}, Lsp5;-><init>(Lof5;)V

    move-object v5, p3

    .line 9
    :goto_0
    invoke-virtual {p1}, Lpe5;->a()V

    .line 10
    iget-object v4, p1, Lpe5;->b:Ljava/lang/String;

    .line 11
    new-instance p2, Lcom/google/firebase/firestore/FirebaseFirestore;

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/firestore/FirebaseFirestore;-><init>(Landroid/content/Context;Lwt5;Ljava/lang/String;Lop5;Lex5;Lpe5;Lcom/google/firebase/firestore/FirebaseFirestore$a;Ljw5;)V

    return-object p2

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FirebaseOptions.getProjectId() cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setClientLanguage(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sput-object p0, Law5;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lpo5;
    .locals 9

    const-string v0, "Provided collection path must not be null."

    .line 1
    invoke-static {p1, v0}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->h:Lmq5;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->b:Lwt5;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->h:Lmq5;

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v3, Laq5;

    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->b:Lwt5;

    iget-object v2, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->g:Lap5;

    .line 7
    iget-object v5, v4, Lap5;->a:Ljava/lang/String;

    .line 8
    iget-boolean v6, v4, Lap5;->b:Z

    .line 9
    invoke-direct {v3, v1, v2, v5, v6}, Laq5;-><init>(Lwt5;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    new-instance v8, Lmq5;

    iget-object v2, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->d:Lop5;

    iget-object v6, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->e:Lex5;

    iget-object v7, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->i:Ljw5;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmq5;-><init>(Landroid/content/Context;Laq5;Lap5;Lop5;Lex5;Ljw5;)V

    iput-object v8, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->h:Lmq5;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    new-instance v0, Lpo5;

    invoke-static {p1}, Liu5;->N(Ljava/lang/String;)Liu5;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lpo5;-><init>(Liu5;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
