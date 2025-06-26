.class public Lsw6$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsw6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lsw6;


# direct methods
.method public constructor <init>(Lsw6;Lsw6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsw6$d;->a:Lsw6;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lsw6$d;->a:Lsw6;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object p1, p0, Lsw6$d;->a:Lsw6;

    iget-object p1, p1, Lsw6;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object p1, p0, Lsw6$d;->a:Lsw6;

    iget-object v1, p1, Lsw6;->j:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    :try_start_0
    new-instance v4, Lsy6;

    invoke-direct {v4, v1}, Lsy6;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 5
    iget-object v4, v4, Lsy6;->c:Ljava/lang/String;

    const-string v6, "disqus_shortname[\\s\\t]*=[\\s\\t]*[\'\"](.*?)[\'\"]|http://([A-Za-z0-9]+).disqus.com/embed.js|http://disqus.com/\\?ref_noscript=([A-Za-z0-9]+)"

    .line 6
    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 7
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 10
    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    if-nez v7, :cond_3

    const/4 v7, 0x3

    .line 11
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v0

    :cond_3
    :goto_0
    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    aput-object v7, v5, v2

    const-string v6, "disqus_([A-Za-z_]+)[\\s\\t]*=[\\s\\t]*[\'\"]?([^\'\";]+)[\'\"]?[,;]"

    .line 12
    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 13
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    :goto_1
    if-eqz v6, :cond_8

    .line 15
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "identifier"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 16
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "category_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lsw6;->l:Ljava/lang/String;

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "developer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lsw6;->m:Ljava/lang/String;

    .line 18
    :cond_7
    :goto_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    goto :goto_1

    .line 19
    :cond_8
    aget-object p1, v5, v3

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    move-object v0, v5

    goto :goto_3

    :catch_0
    nop

    :goto_3
    if-nez v0, :cond_a

    .line 20
    iget-object p1, p0, Lsw6$d;->a:Lsw6;

    const-string v0, "greader"

    iput-object v0, p1, Lsw6;->h:Ljava/lang/String;

    goto :goto_4

    .line 21
    :cond_a
    iget-object p1, p0, Lsw6$d;->a:Lsw6;

    aget-object v1, v0, v2

    iput-object v1, p1, Lsw6;->h:Ljava/lang/String;

    .line 22
    aget-object v0, v0, v3

    iput-object v0, p1, Lsw6;->i:Ljava/lang/String;

    .line 23
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_b
    :goto_5
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lsw6$d;->a:Lsw6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lsw6$d;->a:Lsw6;

    invoke-virtual {p1}, Lrb;->dismiss()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lsw6$d;->a:Lsw6;

    invoke-static {p1}, Lsw6;->d(Lsw6;)V

    :goto_0
    return-void
.end method
