.class public final synthetic Lqp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lta0;


# instance fields
.field public final e:Lop1;


# direct methods
.method public constructor <init>(Lop1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqp1;->e:Lop1;

    return-void
.end method


# virtual methods
.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lqp1;->e:Lop1;

    .line 1
    iget-object v0, v0, Lop1;->e:Lld1;

    invoke-virtual {v0, p1, p2}, Lld1;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
