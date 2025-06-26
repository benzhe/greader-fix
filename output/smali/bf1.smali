.class public final synthetic Lbf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# static fields
.field public static final a:Lzd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbf1;

    invoke-direct {v0}, Lbf1;-><init>()V

    sput-object v0, Lbf1;->a:Lzd1;

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
    check-cast p1, Ldf1;

    .line 2
    invoke-interface {p1}, Ldf1;->A()V

    return-void
.end method
