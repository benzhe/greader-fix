.class public final synthetic Lps1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lms1;


# direct methods
.method public constructor <init>(Lms1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps1;->e:Lms1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lps1;->e:Lms1;

    .line 1
    iget-object v1, v0, Lms1;->b:Lns1;

    .line 2
    iget-object v1, v1, Lns1;->a:Lss1;

    .line 3
    iget-object v0, v0, Lms1;->a:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lvs1;->a(Ljava/util/Map;)V

    return-void
.end method
