.class public final Lgo6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/firebase/firestore/FirebaseFirestore;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 1

    const-string v0, "firebaseStore"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgo6;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-void
.end method
