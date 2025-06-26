.class public Lp97$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp97$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lp97$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read(Lxs7;J)J
    .locals 0

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public timeout()Lwt7;
    .locals 1

    .line 1
    sget-object v0, Lwt7;->NONE:Lwt7;

    return-object v0
.end method
