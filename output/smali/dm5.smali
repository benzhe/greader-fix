.class public final synthetic Ldm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar;


# instance fields
.field public final a:Lf45;

.field public final b:Lzi5;


# direct methods
.method public constructor <init>(Lf45;Lzi5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldm5;->a:Lf45;

    iput-object p2, p0, Ldm5;->b:Lzi5;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Ldm5;->a:Lf45;

    iget-object v1, p0, Ldm5;->b:Lzi5;

    .line 1
    sget-object v2, Lfm5;->b:Lcl5;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lf45;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, v0, Lf45;->a:Le55;

    invoke-virtual {p1, v1}, Le55;->u(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
