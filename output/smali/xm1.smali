.class public final synthetic Lxm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Law2;


# direct methods
.method public constructor <init>(Law2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxm1;->a:Law2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 2

    .line 1
    iget-object v0, p0, Lxm1;->a:Law2;

    if-eqz p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance p1, Lz22;

    sget-object v0, Ldm2;->e:Ldm2;

    const-string v1, "Retrieve required value in native ad response failed."

    invoke-direct {p1, v0, v1}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lvv2$a;

    invoke-direct {v0, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
