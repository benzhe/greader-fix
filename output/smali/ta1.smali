.class public final synthetic Lta1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# static fields
.field public static final a:Lzd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lta1;

    invoke-direct {v0}, Lta1;-><init>()V

    sput-object v0, Lta1;->a:Lzd1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lva1;

    .line 2
    invoke-interface {p1}, Lva1;->onAdImpression()V

    return-void
.end method
