.class public final Llo6;
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
        "Lgo6;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Llo6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Llo6;

    invoke-direct {v0}, Llo6;-><init>()V

    sput-object v0, Llo6;->e:Llo6;

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
    .locals 2

    .line 1
    check-cast p1, Lo18;

    check-cast p2, Lj18;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lgo6;

    .line 4
    const-class v0, Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {v0}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lo18;->a(Lhn7;Lk18;Lel7;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 5
    invoke-direct {p2, p1}, Lgo6;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object p2
.end method
