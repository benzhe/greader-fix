.class public Lj87$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj87$c;->a(Lc47$f;)Lc47$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lj87$c;


# direct methods
.method public constructor <init>(Lj87$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj87$c$a;->e:Lj87$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj87$c$a;->e:Lj87$c;

    .line 2
    iget-object v0, v0, Lj87$c;->a:Lc47$h;

    .line 3
    invoke-virtual {v0}, Lc47$h;->d()V

    return-void
.end method
