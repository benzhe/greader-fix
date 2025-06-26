.class public final synthetic Lcp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lcp5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcp5;

    invoke-direct {v0}, Lcp5;-><init>()V

    sput-object v0, Lcp5;->a:Lcp5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltf5;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/firestore/FirestoreRegistrar;->lambda$getComponents$0(Ltf5;)Lbp5;

    move-result-object p1

    return-object p1
.end method
