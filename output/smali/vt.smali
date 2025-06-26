.class public final synthetic Lvt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lxt;


# direct methods
.method public constructor <init>(Lxt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvt;->e:Lxt;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lvt;->e:Lxt;

    .line 1
    iget-object v1, v0, Lxt;->d:Lcv;

    .line 2
    new-instance v2, Lwt;

    invoke-direct {v2, v0}, Lwt;-><init>(Lxt;)V

    .line 3
    invoke-interface {v1, v2}, Lcv;->a(Lcv$a;)Ljava/lang/Object;

    return-void
.end method
