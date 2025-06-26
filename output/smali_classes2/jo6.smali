.class public final Ljo6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Ltl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Ltl7<",
        "Lo18;",
        "Lj18;",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljo6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljo6;

    invoke-direct {v0}, Ljo6;-><init>()V

    sput-object v0, Ljo6;->e:Ljo6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lo18;

    check-cast p2, Lj18;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lpe5;->b()Lpe5;

    move-result-object p1

    const-string p2, "(default)"

    const-string v0, "Provided FirebaseApp must not be null."

    .line 4
    invoke-static {p1, v0}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v0, Lbp5;

    .line 6
    invoke-virtual {p1}, Lpe5;->a()V

    .line 7
    iget-object p1, p1, Lpe5;->d:Leg5;

    invoke-virtual {p1, v0}, Lpf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Lbp5;

    const-string v0, "Firestore component is not present."

    .line 9
    invoke-static {p1, v0}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v0, p1, Lbp5;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p1, Lbp5;->c:Landroid/content/Context;

    iget-object v1, p1, Lbp5;->b:Lpe5;

    iget-object v2, p1, Lbp5;->d:Lof5;

    iget-object v5, p1, Lbp5;->e:Ljw5;

    move-object v3, p2

    move-object v4, p1

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/firestore/FirebaseFirestore;->b(Landroid/content/Context;Lpe5;Lof5;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestore$a;Ljw5;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 14
    iget-object v1, p1, Lbp5;->a:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method
