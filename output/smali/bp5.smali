.class public Lbp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/FirebaseFirestore$a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/FirebaseFirestore;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lpe5;

.field public final c:Landroid/content/Context;

.field public final d:Lof5;

.field public final e:Ljw5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpe5;Lof5;Ljw5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbp5;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lbp5;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lbp5;->b:Lpe5;

    .line 5
    iput-object p3, p0, Lbp5;->d:Lof5;

    .line 6
    iput-object p4, p0, Lbp5;->e:Ljw5;

    .line 7
    invoke-virtual {p2}, Lpe5;->a()V

    .line 8
    iget-object p1, p2, Lpe5;->i:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
