.class public final synthetic Lsb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lsb6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsb6;

    invoke-direct {v0}, Lsb6;-><init>()V

    sput-object v0, Lsb6;->a:Lsb6;

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

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Ltf5;)Lrb6;

    move-result-object p1

    return-object p1
.end method
