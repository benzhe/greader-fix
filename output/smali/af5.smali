.class public final synthetic Laf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Laf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Laf5;

    invoke-direct {v0}, Laf5;-><init>()V

    sput-object v0, Laf5;->a:Laf5;

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

    invoke-static {p1}, Lcom/google/firebase/abt/component/AbtRegistrar;->lambda$getComponents$0(Ltf5;)Lze5;

    move-result-object p1

    return-object p1
.end method
