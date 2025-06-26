.class public final synthetic Lbv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# static fields
.field public static final a:Lcv2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbv1;

    invoke-direct {v0}, Lbv1;-><init>()V

    sput-object v0, Lbv1;->a:Lcv2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/concurrent/TimeoutException;

    .line 2
    new-instance p1, Lbu1;

    sget-object v0, Ldm2;->i:Ldm2;

    invoke-direct {p1, v0}, Lbu1;-><init>(Ldm2;)V

    .line 3
    new-instance v0, Lvv2$a;

    invoke-direct {v0, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
