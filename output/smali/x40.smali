.class public final synthetic Lx40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgt2;


# instance fields
.field public final a:Lu40;

.field public final b:Lo40;


# direct methods
.method public constructor <init>(Lu40;Lo40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx40;->a:Lu40;

    iput-object p2, p0, Lx40;->b:Lo40;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lx40;->a:Lu40;

    iget-object v1, p0, Lx40;->b:Lo40;

    .line 1
    iget-object v0, v0, Lu40;->e:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v0}, Lo40;->d(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
