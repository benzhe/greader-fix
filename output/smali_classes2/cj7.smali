.class public final Lcj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc7;


# instance fields
.field public final synthetic a:Lel7;


# direct methods
.method public constructor <init>(Lel7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcj7;->a:Lel7;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcj7;->a:Lel7;

    invoke-interface {v0}, Lel7;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "invoke(...)"

    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
